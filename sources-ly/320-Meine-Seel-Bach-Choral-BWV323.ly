
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 323" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Meine Seel erhebt den Herren" }
                     \line { \italic "old: Gott sei uns gnädig und barmherzig" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 \tempo 4 = 128 |
        R1 |
        R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 64 r1 |
	}

  upper = {
	\time 4/4
	\key fis \minor
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        cis2 e |
        cis4 cis cis cis |
        d2 cis |
        b1 |
        a1\fermata |
        cis2 e |
        b4 b b b |
        b2 fis4 gis |
        a2 gis |
        fis1 ~ |
        fis1\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis2 e |
        e4 eis eis_\markup { \tiny "^ 7 Maj ?" } gis |
        fis4 e2 fis4 |
        fis2 e |
        e1 |
        e1 |
        e4 gis fis a |
        gis2 fis |
        fis2. eis4 |
        cis2 d ~ |
	d2 cis2^\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key fis \minor
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a2 b |
        cis4 b a gis |
        a4 b2 a4 |
        a2 gis |
        a1 |
        a2 a |
        gis4 b a fis' |
        e2 b |
        cis2 b |
        ais2 b2 ~ |
	b2 ais2\fermata |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis2 gis |
        a4 gis fis eis |
        fis4 gis a fis |
        d4 b e2 |
        a,1\fermata |
        a4 b cis d |
        e2 dis |
        e2 d! |
        cis1 |
        fis,4 e' d b |
        fis1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "320." }
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
      tempoWholesPerMinute = #(ly:make-moment 128 4)
		}
	    }
	}

