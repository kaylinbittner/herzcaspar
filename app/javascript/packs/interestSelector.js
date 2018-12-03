function nameOfFunction() {
  const sports = "<option value='test'>American Football</option><option value='test2'>Archery</option><option value='test3'>Badminton</option><option value='test4'>Baseball</option><option value='test5'>Basketball</option><option value='test6'>Bowling</option><option value='test7'>Boxing</option><option value='test8'>Cricket</option><option value='test9'>Football</option><option value='test10'>Golf</option><option value='test11'>Gymnastics</option><option value='test12'>Handball</option><option value='test13'>Hockey</option><option value='test14'>Ice Hockey</option><option value='test15'>Rowing</option><option value='test16'>Rugby</option><option value='test17'>Sailing</option><option value='test18'>Shooting</option><option value='test19'>Squash</option><option value='test20'>Swimming</option><option value='test21'>Table Tennis</option><option value='test22'>Tennis</option><option value='test23'>Volleyball</option><option value='test24'>Weightlifting</option><option value='test25'>Winter Sports</option><option value='test26'>Wrestling</option><option value='test27'>Other - Not Listed</option>"
  const games = "<option value='test'>Scrabble</option><option value='test2'>Monopoly</option><option value='test3'>Catan</option><option value='test4'>Qwirkle</option><option value='test5'>Risk</option><option value='test6'>Axis & Allies</option><option value='test7'>Clue</option><option value='test8'>Battleship</option><option value='test9'>Jenga</option><option value='test10'>Trivial Pursuit</option><option value='test11'>Twister</option><option value='test12'>Blokus</option><option value='test13'>Connect Four</option><option value='test14'>Operation</option><option value='test15'>Yahtzee</option><option value='test16'>Cards Against Humanity</option><option value='test17'>Sorry!</option><option value='test18'>Hungry Hungry Hippos</option><option value='test19'>Mouse Trap</option><option value='test20'>Cranium</option><option value='test21'>Chutes and Ladders</option><option value='test22'>Scattergories</option><option value='test23'>The Game of Life</option><option value='test24'>Kerplunk</option><option value='test25'>Trouble</option><option value='test26'>Zingo</option><option value='test27'>Candy Land</option><option value='test28'>Pictionary</option><option value='test29'>Cootie</option><option value='test30'>PieFace</option><option value='test31'>Other - Not Listed</option>"
  const movies = "<option value='test'>Action</option><option value='test2'>Adventure</option><option value='test3'>Comedy</option><option value='test4'>Crime</option><option value='test5'>Drama</option><option value='test6'>Fantasy</option><option value='test7'>Historical</option><option value='test8'>Historical Fiction</option><option value='test9'>Horror</option><option value='test10'>Mystery</option><option value='test11'>Political</option><option value='test12'>Romance</option><option value='test13'>Saga</option><option value='test14'>Satire</option><option value='test15'>Science Fiction</option><option value='test16'>Thriller</option><option value='test17'>Western</option><option value='test18'>Romantic Comedy</option><option value='test19'>Animation</option><option value='test20'>Other - Not Listed</option>"
  const books = "<option value='test'>Action</option><option value='test2'>Adventure</option><option value='test3'>Comedy</option><option value='test4'>Crime</option><option value='test5'>Drama</option><option value='test6'>Fantasy</option><option value='test7'>Historical</option><option value='test8'>Historical Fiction</option><option value='test9'>Horror</option><option value='test10'>Mystery</option><option value='test11'>Political</option><option value='test12'>Romance</option><option value='test13'>Saga</option><option value='test14'>Satire</option><option value='test15'>Science Fiction</option><option value='test16'>Thriller</option><option value='test17'>Western</option><option value='test18'>Romantic Comedy</option><option value='test19'>Other - Not Listed</option>"
  const food = "<option value='test'>Fusion</option><option value='test2'>Vegan</option><option value='test3'>Vegetarian</option><option value='test4'>Cajun</option><option value='test5'>Chinese</option><option value='test6'>French</option><option value='test7'>Greek</option><option value='test8'>Indian</option><option value='test9'>Italian</option><option value='test10'>Korean</option><option value='test11'>Mexican</option><option value='test12'>Polish</option><option value='test13'>Pakistani</option><option value='test14'>Peruvian</option><option value='test15'>Portuguese</option><option value='test16'>Russian</option><option value='test17'>Somali</option><option value='test18'>Turkish</option><option value='test19'>Other - Not Listed</option>"
  const video = "<option value='test'>Wii U</option><option value='test2'>PlayStation 4</option><option value='test3'>Xbox One</option><option value='test4'>Nintendo Switch</option><option value='test5'>Nintendo DS</option><option value='test6'>Game Boy</option><option value='test7'>Nintendo 64</option><option value='test8'>GameCube</option><option value='test9'>Other - Not Listed</option>"
  const hobbies = "<option value='test'>Fishing</option><option value='test2'>Gardening</option><option value='test3'>Listening to Music</option><option value='test4'>Shopping</option><option value='test5'>Traveling</option><option value='test6'>Sewing</option><option value='test7'>Playing Music</option><option value='test8'>Crafts</option><option value='test9'>Watching Sports</option><option value='test10'>Bicycling</option><option value='test11'>Playing Cards</option><option value='test12'>Hiking</option><option value='test13'>Cooking</option><option value='test14'>Camping</option><option value='test15'>Painting</option><option value='test16'>Running</option><option value='test17'>Dancing</option><option value='test18'>Photography</option><option value='test19'>Theater</option><option value='test20'>Other - Not Listed</option>"
  const causes = "<option value='test'>Community</option><option value='test2'>Children & Youth</option><option value='test3'>Poverty</option><option value='test4'>Education & Literacy</option><option value='test5'>Health & Medicine</option><option value='test6'>Seniors</option><option value='test7'>Arts & Culture</option><option value='test8'>Advocacy & Human Rights</option><option value='test9'>Women</option><option value='test10'>Disabled</option><option value='test11'>Homelessness & Housing</option><option value='test12'>Water & Sanitation</option><option value='test13'>Agriculture & Farming</option><option value='test14'>Economic Development</option><option value='test15'>Research</option><option value='test16'>Other - Not Listed</option>"


  const tabs = document.querySelectorAll(".interest-value")

  $(document).ready(function () {

    tabs.forEach(function(tab){
      tab.addEventListener('change', function(){

        var val = $(this).val();
        if (val == "Sports") {
          tab.nextElementSibling.innerHTML = sports;
        } else if (val == "Games") {
          tab.nextElementSibling.innerHTML = games;
        } else if (val == "Movies") {
          tab.nextElementSibling.innerHTML = movies;
        } else if (val == "Books") {
          tab.nextElementSibling.innerHTML = books;
        } else if (val == "Food") {
          tab.nextElementSibling.innerHTML = food;
        } else if (val == "Video") {
          tab.nextElementSibling.innerHTML = video;
        } else if (val == "Hobbies") {
          tab.nextElementSibling.innerHTML = hobbies;
        } else if (val == "Causes") {
          tab.nextElementSibling.innerHTML = causes;
        } else if (val == "Default") {
          tab.nextElementSibling.innerHTML = "<option value=''> - Select One - </option>";
        }
      })
    });
  })
};



export { nameOfFunction };
