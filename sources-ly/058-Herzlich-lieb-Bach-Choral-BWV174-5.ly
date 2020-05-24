
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 174.5" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Herzlich lieb hab ich dich, o Herr" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
	\repeat volta 2 {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 
	}

  upper = {
	\time 4/4
	\key d \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        d4 |
        cis4 b a g8 fis |
        b4 b a4\fermata d |
        cis4 b a g8 fis |
        b4 b a\fermata a |
        b4 cis4 d8 e fis4 |
        e8 d e4 d\fermata } %fin du repeat
\break
        d4 |
        d4 e d b8 cis |
        d4 d cis\fermata cis |
        d4 e d b8 cis |
        d4 d cis\fermata fis |
        g8 fis e4 fis8 e d4 |
        d4 cis d4\fermata cis |
        d4 cis b a |
\break
        a4 gis a\fermata fis' |
        e4 d cis\fermata fis |
        g8 fis e4 fis8 e d4 |
        d4 cis d\fermata d |
        d4 d e d |
        d4 cis d4\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        fis4 |
        e8 fis g fis e4 d |
        d4 d d fis8 eis |
        fis8 e! d e fis e d fis |
        fis4 eis fis fis8 e! |
        d8 b' a g fis g a b |
        e,8 fis g4 fis4 } %fin du repeat
        a4 |
        a8 g8 ~ g fis fis4 e |
        e4 e e e |
        fis4 g fis e |
        d8 e fis4 fis fis |
        e4 e a8 g fis4 |
        e4 e fis g |
        fis4 e8 fis gis4 fis |
        fis4 e e d' |
        ais4 b ais cis |
        b4 b8 a a4 a |
        e4 fis fis a |
        a4 g8 fis g4 fis |
        e8 d e4 fis 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        a8 b |
        cis4 d e8 a, a4 |
        a4 g fis fis8 gis |
        a4 b cis d8 cis |
        b4 cis cis d8 cis |
        b8 g' fis e d4 d |
        d4 cis a4 } %fin du repeat
        fis'8 e |
        d4 cis b8 cis d4 |
        gis,8 a b4 a a |
        a4 a a g |
        fis4 b ais b |
        b4 cis cis d8 cis |
        b4 a a e' |
        a,8 b cis4 d cis |
        b4 b cis a8 b |
        cis4 fis, fis' fis8 e |
        d4 e d d8 cis |
        b4 cis b d8 c |
        b4 b b8 a a4 |
        a4 a a4
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        d4 |
        a4 b cis d |
        g,8 a b cis d4\fermata b4 |
        fis'4 g! a b8 a |
        gis4 cis, fis\fermata d |
        g4 a b a8 g |
        a4 a, d4\fermata } %fin du repeat
        d'8 cis |
        b4 ais b8 a! gis fis |
        e8 fis gis e a4\fermata a8 g |
        fis8 e d cis d4 e |
        b8 cis d e fis4\fermata dis |
        e4 a!8 g fis4 b8 a |
        gis4 a d,\fermata e4 |
        fis8 gis a4 eis fis8 eis8 |
        dis4 e a,\fermata d4 |
        cis4 b fis'\fermata ais4 |
        b4 cis d fis, |
        gis4 ais b4\fermata fis |
        g!8 a! b4 cis, d |
        a'4 a, d\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "58." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	   }

         } % fin de score

  \score {
    \unfoldRepeats { << \guidemidi \upper \lower >> }
    \midi {
    \context {
     \Staff
      \remove "Staff_performer"
               }

     \context {
      \Voice
       \consists "Staff_performer"
                }

     \context { 
      \Score
      tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

