import $ from 'jquery';
class Search{
	// 1.describe  and initiate our object
	constructor(){
		this.openSearchBtn    = $(".js-search-trigger");
		this.closeSearchBtn   = $(".search-overlay__close");
		this.searchOverlay    = $(".search-overlay");
		this.searchInput      = $("#search-term");
		this.events();
		this.isOpen           = false;
		this.isSpinnerVisible = false;
		this.typingTimer;
		this.previousValue;
		this.searchResultsDiv = $("#search-overlay__results");
		
	} 

	// 2. event
	events(){
		this.openSearchBtn.on("click",this.openOverlay.bind(this));
        this.closeSearchBtn.on("click",this.closeOverlay.bind(this));
        $(document).on("keydown",this.keyPressDispatcher.bind(this));
       this.searchInput.on("keyup",this.typingLogic.bind(this));
	}
	// 3. methods
	typingLogic(){
		if(this.searchInput.val() != this.previousValue){
			clearTimeout(this.typingTimer);
			if(this.searchInput.val()){
				if(!this.isSpinnerVisible){
				this.searchResultsDiv.html('<div class="spinner-loader"></div>');
				this.isSpinnerVisible = true;
			}

			}else{
				this.searchResultsDiv.html('');
				this.isSpinnerVisible = false;
			}
			
			this.typingTimer = setTimeout(this.getResults.bind(this),2000);
		}

		
		this.previousValue = this.searchInput.val();


	}
	// getResults(){
	// 		 $.when(
	// 		      $.getJSON(medoData.root_url + '/wp-json/wp/v2/posts?search=' + this.searchInput.val()),
	// 		      $.getJSON('http://localhost:3000/themedev/' + '/wp-json/wp/v2/pages?search=' + this.searchInput.val())
	// 		      ).then((posts, pages) => {
	// 		      var combinedResults = posts[0].concat(pages[0]);
	// 		      this.searchResultsDiv.html(`
	// 		        <h2 class="search-overlay__section-title">General Information</h2>
	// 		        ${combinedResults.length ? '<ul class="link-list min-list">' : '<p>No general information matches that search.</p>'}
	// 		          ${combinedResults.map(item => `<li><a href="${item.link}">${item.title.rendered}</a>by ${item.authorName}</li>`).join('')}
	// 		        ${combinedResults.length ? '</ul>' : ''}
	// 		      `);
	// 		      this.isSpinnerVisible = false;
	// 		    }, () => {
	// 		      this.searchResultsDiv.html('<p>Unexpected error; please try again.</p>');
	// 		    });
	// 		}
    getResults() {
        $.getJSON(medoData.root_url + '/wp-json/medo/v1/search?term=' + this.searchInput.val(), (results) => {
            this.searchResultsDiv.html(`
        <div class="row">
          <div class="one-third">
            <h2 class="search-overlay__section-title">General Information</h2>
            ${results.generalInfo.length ? '<ul class="link-list min-list">' : '<p>No general information matches that search.</p>'}
              ${results.generalInfo.map(item => `<li><a href="${item.permalink}">${item.title}</a> ${item.postType == 'post' ? `by ${item.authorName}` : ''}</li>`).join('')}
            ${results.generalInfo.length ? '</ul>' : ''}
          </div>
            <div class="one-third">
            <h2 class="search-overlay__section-title">Programs</h2>
            ${results.programs.length ? '<ul class="link-list min-list">' : `<p>No programs match that search. <a href="${universityData.root_url}/programs">View all programs</a></p>`}
              ${results.programs.map(item => `<li><a href="${item.permalink}">${item.title}</a></li>`).join('')}
            ${results.programs.length ? '</ul>' : ''}

            <h2 class="search-overlay__section-title">Professors</h2>
            ${results.professors.length ? '<ul class="professor-cards">' : `<p>No professors match that search.</p>`}
              ${results.professors.map(item => `
                <li class="professor-card__list-item">
                  <a class="professor-card" href="${item.permalink}">
                    <img class="professor-card__image" src="${item.image}">
                    <span class="professor-card__name">${item.title}</span>
                  </a>
                </li>
              `).join('')}
            ${results.professors.length ? '</ul>' : ''}

          </div>
          <div class="one-third">
            <h2 class="search-overlay__section-title">Campuses</h2>
            ${results.campuses.length ? '<ul class="link-list min-list">' : `<p>No campuses match that search. <a href="${universityData.root_url}/campuses">View all campuses</a></p>`}
              ${results.campuses.map(item => `<li><a href="${item.permalink}">${item.title}</a></li>`).join('')}
            ${results.campuses.length ? '</ul>' : ''}

            <h2 class="search-overlay__section-title">Events</h2>
          </div>
        </div>
      `);
            this.isSpinnerVisible = false;
        });

    }
	openOverlay(){
		this.searchOverlay.addClass("search-overlay--active");
		this.DisableScrollBody();
		this.isOpen = true ;
		return false;

	}
	closeOverlay(){
		this.searchOverlay.removeClass("search-overlay--active");
		this.EnableScrollBody();
		this.isOpen = false ;

	}

	DisableScrollBody(){
		$("body").addClass("body-no-scroll");
	}
	EnableScrollBody(){
		$("body").removeClass("body-no-scroll");

	}

	keyPressDispatcher(e){

		
		if(e.keyCode  ==  83 && !this.isOpen && !$("input , textarea").is(":focus") ){
			this.openOverlay();
		}
		if(e.keyCode == 27  && this.isOpen){
			this.closeOverlay();
			this.searchResultsDiv.html('');
		}
	}
}
export default Search;