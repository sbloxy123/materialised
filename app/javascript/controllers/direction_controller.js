import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("new driver controller 1")
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.#addDirectionsToMap()

  }
  #addDirectionsToMap(){
    // console.log(this.markersValue)
    const coordinates = this.markersValue.map((marker) => {
      // console.log(marker, "marker")
      return marker.lng + "," + marker.lat + ";"

    })
    // console.log(coordinates)
    fetch(`https://api.mapbox.com/directions/v5/mapbox/driving-traffic/${coordinates.join("").slice(0,-1)}?geometries=geojson&access_token=${this.apiKeyValue}`,
      {
        method: 'GET',
        headers: {
          'Content-Type':'application/json',
          'Access-Control-Allow-Origin':'*'
        }
      })
      .then(response => response.json())
      .then((data) => {
        // console.log(data)
        const newData = data.routes[0];
        const route = newData.geometry.coordinates;
        const geojson = {
          type: 'Feature',
          properties: {},
          geometry: {
            type: 'LineString',
            coordinates: route
          }
        };
        // if the route already exists on the map, we'll reset it using setData
        if (this.map.getSource('route')) {
          this.map.getSource('route').setData(geojson);
        }
        // otherwise, we'll make a new request
        else {
          this.map.addLayer({
            id: 'route',
            type: 'line',
            source: {
              type: 'geojson',
              data: geojson
            },
            layout: {
              'line-join': 'round',
              'line-cap': 'round'
            },
            paint: {
              'line-color': '#3887be',
              'line-width': 5,
              'line-opacity': 0.75
            }
          });
        }
        const time = Math.floor(
          newData.duration / 60) + 30;
        document.getElementById("time").innerHTML = time

  // add turn instructions here at the end
      })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup({className: 'text-warning'}).setHTML(marker.info_window)

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "50px"
      customMarker.style.height = "50px"
      // customMarker.style.backgroundColor = "#000"
      customMarker.style.backgroundRepeat = "no-repeat"
//
      // Pass the element as an argument to the new marker
      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
        console.log(customMarker)
    })

  }
  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
