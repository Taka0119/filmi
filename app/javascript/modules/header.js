document.addEventListener('DOMContentLoaded', function() {

  function textAdd() {
    let block = document.getElementById('menu_movie')
    insetElement = document.createElement('li');

    insetElement.textContent = 'TEST :';
    block.insertAdjacentElement('afterbegin', insetElement)
  }

  document.getElementById('menu_movie').addEventListener('click', textAdd)

  let window = document.defaultView
  let header = document.getElementsByClassName('shares_header')[0]

});
