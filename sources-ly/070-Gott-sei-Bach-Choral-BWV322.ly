
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 322" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Gott sei gelobet und gebenedeiet" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 } %fin du repeat
        r4 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        \bar "||"
        
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        R1 |
        \tempo 4 = 40 r2.         
	}

  upper = {
	\time 4/4
        \key g \mixolydian  % c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
	\repeat volta 2 {
        g4 |
        g4 g a2 |
        g2\fermata c4 d |
        c4 b a2 |
        g2\fermata a8 b c4 |
        g8 f e4 f e |
        d2 c4\fermata } %fin du repeat
\break
        g'4 |
        g4 g a4. g8 |
        fis8 g a4 g2\fermata |
        \bar "||"
        
        g4 g a b |
\break
        c4 b a2 |
        g2\fermata b4 c |
        d4 d d a |
\break
        g4 e d2\fermata |
        e4 fis g8 f e4 |
        fis2 g2\fermata |
        d8 e f4 e d |
        e4 d c2\fermata |
        r4 g'4 g g |
        a4. g8 fis g a4 |
        g2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        d4 |
        g8 f e4 ~ e d |
        e2 g4 g4 ~ |
	g8 fis8 g4 g8 fis!16 e fis4 |
        d2 f!4 ~ f8 e |
        d4 c4 ~ c8 b c4 ~ |
	c8 b16 a b4 g } %fin du repeat
        e'4 |
        d8 c d f e d16 c b8 cis |
        d8 g4 fis!8 d2 |
        \bar "||"
        
        d4 e fis g ~ |
	g8 fis8 g4 g8 fis!16 e fis4 |
        d2 g4 g |
        g4 g4 ~ g8 fis16 e fis8 f |
        e8 d d cis a2 |
        c4 c d c4 ~ |
	c8 e8 d c b2 |
        b4 a g8 c b4 |
        c4. b8 g2 |
        r4 d'4 c g |
        c8 d e4 d2 |
        d2. 
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key g \mixolydian  % c \major
	\clef bass
	\partial 4
        \mergeDifferentlyDottedOn
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
	\repeat volta 2 {
        b8 c |
        d4 c8 b c4 b8 a |
        b2 e4 f |
        e4 d d4 ~ d8 c |
        b2 d4 c |
        d4 g, f g |
        a4 g8 f e4 } %fin du repeat
        c'4 |
        g8 a b4 c8 fis, g a |
        b4 a16 b c8 b2 |
        \bar "||"
        
        b4 ~ b8 cis d4 d |
        c4 d e8 c a d16 c |
        b2 d4 e |
        d8 c b4 c d8 c |
        bes4 a8. g16 f2 |
        g4 a g g |
        a8 c b a g2 |
        g4 c,8 d e g g4 |
        g4 g8. f16 e2 |
        r4 g8 f e4 d8 e |
        f4 c'8 b a g4 fis8 |
        b2. 
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
	\repeat volta 2 {
        g8 a |
        b4 e8 d c4 f |
        e2\fermata e8 d c b |
        c4 g d' d, |
        g2\fermata d'4 a |
        b4 c8 b a4 g |
        f4 g c,\fermata } %fin du repeat
        c'4 |
        b8 a g4 c8 d e4 |
        d4 d, g2\fermata |
        \bar "||"
        
        g'8 fis e4 d8 c! b4 |
        a4 b8 g c a d4 |
        g,2\fermata g'8 f! e4 |
        b4. e8 a,4 d |
        g,4 a d2\fermata |
        c8 b a4 b c8 b |
        a4 d g,2\fermata |
        g4 a8 b c e g f |
        e8 c g' g, c2\fermata |
        r4 b4 c b |
        a8 b c4 d2 |
        g,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "70." }
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

