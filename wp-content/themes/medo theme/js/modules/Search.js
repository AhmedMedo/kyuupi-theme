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
	getResults(){
			 $.when(
			      $.getJSON(medoData.root_url + '/wp-json/wp/v2/posts?search=' + this.searchInput.val()),
			      $.getJSON('http://localhost:3000/themedev/' + '/wp-json/wp/v2/pages?search=' + this.searchInput.val())
			      ).then((posts, pages) => {
			      var combinedResults = posts[0].concat(pages[0]);
			      this.searchResultsDiv.html(`
			        <h2 class="search-overlay__section-title">General Information</h2>
			        ${combinedResults.length ? '<ul class="link-list min-list">' : '<p>No general information matches that search.</p>'}
			          ${combinedResults.map(item => `<li><a href="${item.link}">${item.title.rendered}</a>by ${item.authorName}</li>`).join('')}
			        ${combinedResults.length ? '</ul>' : ''}
			      `);
			      this.isSpinnerVisible = false;
			    }, () => {
			      this.searchResultsDiv.html('<p>Unexpected error; please try again.</p>');
			    });
			}
	openOverlay(){
		this.searchOverlay.addClass("search-overlay--active");
		this.DisableScrollBody();
		this.isOpen = true ;

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