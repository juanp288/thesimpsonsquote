// Conection with back-end Firebase

var firebaseConfig = {
	apiKey: "AIzaSyBGXtNd9iNYlo7DDT2I_fMpvuBrcPL_-fo",
	authDomain: "thesimpsonsquotes-5a614.firebaseapp.com",
	databaseURL: "https://thesimpsonsquotes-5a614.firebaseio.com",
	projectId: "thesimpsonsquotes-5a614",
	storageBucket: "",
	messagingSenderId: "1028493075299",
	appId: "1:1028493075299:web:82f24d042d02ba52"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);

function singInWithFacebook() {
  var provider = new firebase.auth.FacebookAuthProvider();
	provider.addScope('public_profile');

	firebase.auth().signInWithPopup(provider).then(function(result) {
		location.href = "http://localhost/TheSimpsonsCF/quotes.cfm";
	}).catch(function(error) {
		console.log(error);
	})
};