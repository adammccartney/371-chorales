
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 245.28" }
      piece = \markup { \hspace #9 \fontsize #2 \bold \column \center-align { \line { "Jesu Kreuz, Leiden und Pein" }
                     \line { \italic "old: Jesu Leiden, Pein und Tod" }
                 } }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 |
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        cis4 b a b |
        cis4 dis e2\fermata |
        fis4 e d! cis8 b |
        b2 a2\fermata |
        cis4 e d cis |
        b4 a gis2\fermata |
        a4 b cis cis8 d16 e |
        d2 cis2\fermata |
        cis4 d e d |
        cis4 b cis2\fermata |
        b4 b cis8 dis e4 |
        e4 dis e2\fermata |
        e4 cis fis4. e8 |
        d4 cis8 b b2\fermata |
        cis4 e d cis8 b |
        b2 a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 gis a gis |
        a8 gis fis4 gis2 |
        b4 b gis a |
        a4 gis e2 |
        a4 b a gis |
        fis4 fis eis2 |
        cis4 e e e |
        a4 b a2 |
        a4 a a a |
        a4 gis a2 |
        gis4 e a gis |
        fis2 gis |
        g4 g fis8 gis a4 |
        a8 gis a4 gis2 |
        a4 b a a |
        a4 gis e2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e4 e e e |
        e4 b b2 |
        d4 b e e |
        fis4 e8 d cis2 |
        e4 e fis cis |
        d4 d gis,2 |
        fis4 gis a b |
        fis'4 e e2 |
        e4 d cis b |
        cis8 d e4 e2 |
        e4 b a b |
        cis4 b b2 |
        bes4 a a8 b cis4 |
        d4 e e2 |
        e4 e fis fis |
        fis4 e8 d! cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 e cis e |
        a,4 b e2\fermata |
        b'4 gis e a |
        d,4 e a,2\fermata |
        a'4 gis fis e |
        d4 cis8 b cis2\fermata |
        fis4 e a gis |
        fis4 gis a2\fermata |
        a4 fis cis d |
        e4 e a,2\fermata |
        e'8 fis gis4 fis e |
        a4 b e,2\fermata |
        g4 a d, cis |
        b4 a e'2\fermata |
        a4 gis fis e |
        dis4 e a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "106." }
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

