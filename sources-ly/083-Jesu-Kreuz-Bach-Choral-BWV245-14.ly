
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 245.14" }
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
        cis4 d e2\fermata |
        fis4 e d cis8 b |
        b2 a2\fermata |
        cis4 e d cis |
        b4 a gis2\fermata |
        a4 b cis cis8 d16 e |
        d2 cis2\fermata |
        cis8 b cis d e4 d |
        cis4 b cis2\fermata |
        b4 b cis8 dis e4 |
        e4 dis e2\fermata |
        e4 cis fis4. e8 |
        d4 cis8 b b2\fermata |
        cis4 cis8 d16 e d4 cis8 b |
        b2 a2\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 gis fis e |
        e4 fis g2 |
        fis4 gis! a8 b e, a |
        a4 gis e2 |
        a4 b a a |
        gis4 fis eis2 |
        fis4 e! e fis |
        fis8 a gis fis gis2 |
        fis4 fis cis8 gis' a b |
        a4 gis a2 |
        fis4 e a b |
        cis4 b8 a gis!2 |
        gis4 a a g |
        g8 fis e4 d2 |
        fis4 e8 fis gis4 a |
        a8 fis gis4 e2 |
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
        fis4 cis cis b |
        a4 a a2 |
        d4 cis cis8 b cis d |
        e4 d8 cis cis2 |
        e4 e fis e |
        d4 cis cis2 |
        cis4 b a8 b cis4 |
        cis4 b8 a! b2 |
        a4 a' gis fis |
        e4 e e2 |
        dis4 e e8 fis g4 |
        fis4 b, b2 |
        cis4 cis c b8 ais |
        b4 ais b2 |
        a!4 a b e, |
        e'4 d16 cis d8 cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 eis fis gis |
        a4 fis cis2\fermata |
        d4 e fis8 gis a4 |
        e2 a,2\fermata |
        a'4 gis fis8 gis a4 |
        eis4 fis cis2\fermata |
        fis4 gis a ais |
        b2 eis,2\fermata |
        fis8 gis a b cis4 fis,8 gis |
        a4 e a,2\fermata |
        a'4 gis g fis8 e |
        ais,4 b e,2\fermata |
        cis'4 fis d g |
        e4 fis b,2\fermata |
        fis'8 e d cis b4 cis8 d |
        e2 a,2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "83." }
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

