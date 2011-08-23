      String.prototype.htmlSpecialChars = function() {
          var result = this.replace(/</g, '&lt;');
          result = result.replace(/>/g, '&gt;');
          result = result.replace(/\"/g, '&quot;');
          result = result.replace(/\'/g, '&apos;');
          result = result.replace(/  /g, '&nbsp;');
          result = result.replace(/\r\n/g, '<br />');
          result = result.replace(/(\n|\r)/g, '<br />');
          return result;
      }

      jQuery(function() {
          $('#quiz_sentence').html("now loading...");
          $.ajax({
              type: "GET",
              url: "/quiz/Quiz.getQuestion.json",
              beforeSend: function(xhr) {
                  xhr.setRequestHeader("Content-type",
                               "application/json; charset=utf-8");
              },
              data: "",
              dataType: "jsonp",
              success: function(question) {
                  $('#quiz_sentence').html("(" + question.quizTitle + " : "
                     + question.groupName + ") " + question.sentence.htmlSpecialChars() + "<br />");
                  for (i = 0, max = question.choices.length; i < max; i++) {
                      $('#quiz_choices').append(
                          "<input type=\"checkbox\" name=\"quiz_choice\" value=\""
                          + question.choices[i].correct + "\" />"
                          + question.choices[i].text.htmlSpecialChars() + "<br />");
                  }
                  $('#quiz_comment').val(question.comment.htmlSpecialChars());
                  $('#quiz_submit').css("visibility", "visible");
              },
              error: function(xhr, status, errorThrown) {
                  $('#quiz_sentence').html("service not available.(" + status + ")");
              }
          });
      });

      function answer() {
          var correct = true;
          $("input[name='quiz_choice']").each(
          function(i, elem) {
              if ((elem.checked == true && elem.value == "false")
                  || (elem.checked == false && elem.value == "true")) {
                  correct = false;
              }
          });

          if (correct) {
              $('#quiz_answer').html(
                  "<span style=\"font-size:large;\">正解！(^^)/</span><br />"
                  + $("#quiz_comment").val());
          } else {
              alert("不正解 (++)");
          }
      }
