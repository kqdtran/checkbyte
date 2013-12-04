(function() {
  var TIMEOUT = 20000000;
  var loadingImg = '<img id="loadingImage" src="/static/img/ajax-loader.gif" />';

  var errored = function(xml, status, message, $elem) {
    if (status === "timeout") {
      $elem.html("Timed out. Try again.");
    } else {
      $elem.html("Something went wrong. Try again.");
    }
    return null;
  };

  var updateValue = function(url, text1, text2, $elem, success) {
    $elem.append(loadingImg);
    $.ajax({
      url: url,
      type: "POST",
      timeout: TIMEOUT,
      data: {"old": text1, "new": text2},
      dataType: "json",
      success: success,
      error: function(xml, status, message) {
        errored(xml, status, message, $elem);
      }
    });
  };

  var fetchDiff = function(oldCode, newCode) {
    var $sentDiv = $("#result");
    $sentDiv.show();
    $sentBtn = $("#checkByte");
    updateValue("/checkByte", oldCode, newCode, $sentDiv, function(res) {
      $sentDiv.empty();
      $sentBtn.addClass("active");
      var diff = res.result;
      $sentDiv.append("Code difference in byte: " + diff);
    });
  };

  $("#checkByte").on('click', function(e) {
    e.preventDefault();
    var oldCode = $("textarea[name='old']")[0].value;
    var newCode = $("textarea[name='new']")[0].value;
    fetchDiff(oldCode, newCode);
  });
}).call(this);