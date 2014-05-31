leftKey = 37
upKey = 38
rightKey = 39
downKey = 40
$(document).ready ->
	$(document).keyup (e) ->
			position = $("#avatar").position();
			switch e.which
				when leftKey 
					$("#avatar").stop().animate(left: "-=200") if position.left > 11
				when upKey
					$("#avatar").stop().animate(top: "-=200") if position.top > 11
				when rightKey
					$("#avatar").stop().animate(left: "+=200") if position.left < 411
				when downKey
					$("#avatar").stop().animate(top: "+=200") if position.top < 411
			console.log("left: #{$("#avatar").css("left")}\ntop: #{$("#avatar").css("left")}")
	generateGrid = (x,y) ->
		arr = []
		arr.push [i, j] for i in [0...x] for j in [0...y]
	console.log(generateGrid 3, 3)
	displayGrid = (grid) ->
		for row in grid
			for collum in row
				$(".container").append("<div id='box#{collum}'></div>")
	displayGrid(generateGrid 3, 3)