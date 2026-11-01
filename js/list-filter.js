(function () {
  function init(input) {
    var container = document.querySelector(input.dataset.container);
    if (!container) return;

    var items = Array.from(container.querySelectorAll(input.dataset.item)).map(function (item) {
      return { item: item, text: item.textContent.toLowerCase() };
    });
    var groups = input.dataset.group
      ? Array.from(container.querySelectorAll(input.dataset.group)).map(function (list) {
          return { list: list, heading: list.previousElementSibling, items: items.filter(function (i) { return list.contains(i.item); }) };
        })
      : [];

    input.addEventListener('input', function () {
      var query = input.value.toLowerCase();
      items.forEach(function (i) { i.item.hidden = !i.text.includes(query); });
      groups.forEach(function (g) {
        var hidden = g.items.every(function (i) { return i.item.hidden; });
        g.list.hidden = hidden;
        if (g.heading) g.heading.hidden = hidden;
      });
    });

    input.closest('.list-filter').hidden = false;
  }

  document.querySelectorAll('.list-filter input').forEach(init);
})();
