
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 282" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christus, der ist mein Leben" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
	R2. |
        R2. |
	R2. |
        R2. |
	r4 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        R2. |
        \tempo 4 = 34 r2 \tempo 4 = 78 r4 |
        R2. |
        R2. |
        \tempo 4 = 34 r2 
	}

  upper = {
	\time 3/4
	\key g \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        g4 |
        b2 a4 |
        b2 c4 |
        d2. |
        b2\fermata r4 |
        e2. ~ |
	e2. |
\break
        d2. ~ |
	d2. |
        c2. ~ |
	c8 b8 c4\fermata r4 |
        b4 e8 c8 a4 |
        b2\fermata d4 |
\break
        e2 fis4 |
        g2 fis4 |
        e2. |
        d2\fermata b4 |
        a2 g4 |
        g2 fis4 |
        g2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        d4 |
        g2 fis4 |
        g2 g4 |
        g4. fis16 e fis4 |
        d2 r4 |
        R2. |
        f2. ~ |
	f2. |
        f2. |
        e2. |
        fis!4 fis r |
        g8 fis e4 fis8 e |
        dis2 g4 |
        g2 a4 |
        b2 a4 |
        b8 a g4. a16 g |
        fis2 g4 |
        g4 fis e |
        e4 d2 |
        d2
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 3/4
	\key g \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        d2 d4 |
        d2 c4 |
        b4. a16 g a4 |
        g2 r4 |
        R2.*2 |
        gis2. ~ |
	gis2. |
        a2. ~ |
	a4 a4 r |
        g8 b b a16 b c4 |
        fis,2 d'!4 |
        c2 c4 |
        d2 d4 |
        d4. cis16 b cis4 |
        a2 e'4 |
        e4 b b |
        c8 b a b c4 |
        b2
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g4 |
        g2 d4 |
        g4 fis e |
        b8 c d4 d |
        g,2\fermata r4 |
        R2.*3 |
        c2. ~ |
	c4. b8 c a |
        d4 d\fermata r |
        e8 d c4 c |
        b2\fermata b'4 |
        b2 a4 |
        g4 b d |
        g,8 fis e4 a |
        d,2\fermata e8 d |
        cis4 dis e |
        c4 d2 |
        g,2\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "316." }
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

