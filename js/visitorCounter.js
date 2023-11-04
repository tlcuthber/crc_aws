const url = 'https://7cbbftp5r6.execute-api.us-east-1.amazonaws.com/Prod/crc-update-visitor-counter'

// Triggers API
async function getData() {
   const response = await fetch(url, {
      method: 'POST',
      headers: {'Content-Type': 'application/json'} 
   })

   const data = await response.json()

   // Inserts the number of page views
   document.getElementById('counterScript').innerHTML = `Views: ${data}`
}

getData()