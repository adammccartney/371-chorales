
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 391" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Nun preiset alle Gottes Barmherzigkeit" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        R2. |
        r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        r4 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R2. |
        R2. |
        \tempo 4 = 40 r2. \tempo 4 = 78 |
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 |
        \repeat volta 2 {
        R2. |
        R2. |
        R2. |
        r2 \tempo 4 = 30 r4 | } %fin du repeat
	}

  upper = {
	\time 3/4
	\key g \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 g a |
        b4 g2\fermata |
        a4 a b |
        c2 b4 |
        c2.\fermata |
        b4 b cis |
\break
        d4 a2\fermata |
        b4 cis d |
        d2 cis4 |
        d2.\fermata |
        a4 a b |
        c4 d e |
\break
        d2 c4 |
        b2 a4\fermata |
        \repeat volta 2 {
        e'4. d8 c4 |
        d4. c8 b4 |
        c4 c b |
        a2 g4\fermata | } %fin du repeat
        \bar ":|"
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 e fis |
        g8 f e2 |
        f2 f4 |
        g2 g4 |
        g2. |
        g4 g g |
        fis4 fis2 |
        g4 g fis8 g |
        a4 g8 fis g e |
        fis2. |
        fis4 fis gis |
        a4. gis8 a g |
        fis4 gis a |
        a4 gis e |
        \repeat volta 2 {
        e8 fis g4 a |
        a8 g fis4 g |
        g4 a g | 
        g4 fis d | } %fin du repeat
        \bar ":|"
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 b d |
        d4 c2 |
        c2 d4 |
        e2 d8 f |
        e2. |
        d4 d e |
        a,4 d2\fermata |
        d4 a d4 ~ |
	d8 c8 b4 a |
        a2. |
        d4 d d |
        e4 d c8 b |
        a4 b c8 e |
        f4 e8 d c4 |
        \repeat volta 2 {
        g'4 c,8 d e4 |
        d2 d4 |
        e4 d d |
        e4 d8 c b4 | } %fin du repeat
        \bar ":|"
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 fis e4 d |
        g,4 c2\fermata |
        f4. e8 d4 |
        c4 e g |
        c,2.\fermata |
        g'4 g8 fis e4 |
        d2 d4\fermata |
        g4 a b |
        fis4 g a |
        d,2.\fermata |
        d4 c b |
        a4 b c4 ~ |
	c4 b4 a |
        d4 e a,4\fermata |
        \repeat volta 2 {
        c'4. b8 a g |
        fis8 e d4 g8 fis |
        e4 fis g |
        c,4 d g,\fermata | } %fin du repeat
        \bar ":|"
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "222." }
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

