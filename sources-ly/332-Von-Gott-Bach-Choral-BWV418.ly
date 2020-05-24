
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 418" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Von Gott will ich nicht lassen" }
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
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
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
	\relative c' {
        e4 |
        a4 b c d |
        b4. a8 g4\fermata g |
        a4 a b b |
        e,2.\fermata e4 |
        a4 b c d8 c |
\break
        b4. a8 g!4\fermata g |
        a4 a b b |
        e,2.\fermata e'4 |
        d4 c c b |
        c2.\fermata b4 |
        c4 d e e |
\break
        d4. c8 b4\fermata b |
        c4 b a a |
        b4. a8 g4\fermata g8 f! |
        e4 a a8 b gis4 |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        c8 d |
        e4 e e d |
        d8 e fis4 e e |
        e4 d d8 f e d |
        c2. b4 |
        e4 fis8 gis a4 a8 g |
        f8 e d4 e d |
        e4 e d8 e fis4 |
        b,2. c4 |
        a'4 a g g |
        g2. g8 f |
        e4 d c e |
        a8 g a fis g4 g |
        g8 f g e c4 c |
        b8 cis dis4 e d |
	d8 c8 c d e f e4 |
        e2.
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
        a8 b |
        c4 b a a |
        b2 b4 c |
        c8 b a4 g8 a b4 |
        a2. gis4 |
        a4 d e a,4 ~ |
	a8 gis8 a4 b b |
        a8 b a g fis g a4 |
        gis2. a4 |
        a4 d d8 e f d |
        e2. d4 |
        c4 g' g c,8 b |
        a4 d d d |
        g,4 c c8 b a g |
        fis8 g a4 b g |
        g4 a8 b c d b4 |
        cis2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        a4 |
        a'4 gis a8 g fis4 |
        g4 dis e4\fermata c |
        f4 fis g gis |
        a2.\fermata e8 d |
        c4 b a8 g' f e |
        d8 e f4 e\fermata b |
        c4 cis d dis |
        e2.\fermata a8 gis_\markup { \tiny "gis->f = 2de augmentée?" } |
        f4 fis g g, |
        c2.\fermata g'4 |
        a4 b c8 b a g |
        fis8 e fis d g4\fermata g8 f |
        e8 d e c f g f e |
        dis8 e fis!4 e\fermata b |
        c4 f e8 d e e, |
        a2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "332." }
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

