window.addEventListener('load', () => {
  // Calc totals
  const orderItems = document.querySelectorAll('.order-item')
  if (orderItems) {
    let total = 0
    orderItems.forEach(orderItem => {
      total += Number(orderItem.querySelector('span').innerText)
    })
    document.getElementById('total').innerText = '$ ' + total.toString()
    document.querySelector('input[name="total"]').value = total.toString()
  }

  const checkoutForm = document.getElementById('checkout-form')
  checkoutForm.addEventListener('submit', (ev) => {
    ev.preventDefault()
    if (confirm("Are you sure to perform this action?")) {
      checkoutForm.submit()
    }
  })
})