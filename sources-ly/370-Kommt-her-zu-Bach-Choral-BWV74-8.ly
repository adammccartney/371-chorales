
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 74.8" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Kommt her zu mir, spricht Gottes Söhn" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key a \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a4 a e' d |
        e4 c b\fermata a8 b |
        c4 b c8 d e4 |
\break
        d4 c b\fermata c8 b |
        a4 a d8 c b c |
        a2 g4\fermata g |
\break
        c4 b c8 d e4 |
        d4 c b\fermata a8 b |
        c4 b c8 d e4 |
\break
        d4 c b\fermata e |
        e4 e d8 c b c |
        b8 gis a b b2 |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 f |
        e4 e8 d e4 f |
        e4 e e e |
        a4 gis a g8 a |
        b4 a gis a |
        d,8 e fis4 fis g |
        g4 fis d e8 f |
        g4 d e8 f g4 |
        gis4 a gis! e |
        d4 d e8 f g4 |
        f8 e e4 e gis |
        a4 g! f4. e8 |
        f4 e8 f e f e d |
        cis2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c8 d |
        c8 b a4 a8 c b a |
        b4 a gis a |
        e'4 e e e |
        f4 e e e |
        a,4 d d e |
        d8 c16 b c4 b c |
        g8 a b a g4 c |
        d4 e e c8 b |
        a4 b8 a g4 c |
        c8 b b a gis4 b |
        c4 cis d4. e8 |
        d4 c8 a gis a4 gis8 |
        e2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a4 |
        a'4 f c d |
        gis,4 a e'\fermata c8 b |
        a4 e' a8 b c4 |
        gis4 a e\fermata a8 g |
        fis8 e d c b4 e8 c |
        d2 g,4\fermata c8 d |
        e8 f g f e4 d8 c |
        b4 a e'\fermata a8 g |
        fis8 d g f e d c b |
        a8 gis a4 e'\fermata e |
        a8 g f e f e d c! |
        d8 b c d e d e4 |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "370." }
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

