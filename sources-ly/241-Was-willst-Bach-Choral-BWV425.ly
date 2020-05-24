
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 425" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Was willst du dich, o meine Seele, kränken" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        R1 |
        R1 |
        r2 \tempo 4 = 34 r2 
	}

  upper = {
	\time 4/4
	\key d \dorian % c \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        d,4. e8 f4 g |
        a8 b c4 b a |
        a4 gis a4\fermata a |
        g4 g c a |
        bes8 a g f g4. f8 |
        f2\fermata r4 a4 |
        d,4 e f g |
        a8 b c4 b4. a8 |
        a2\fermata r4 a4 |
        g4 g c a |
        bes8 a g f e4. d8 |
        d2\fermata r4 a'4 |
        g8 a f g e4. d8 |
        d2\fermata r4 a'4 |
        a4 b c c |
        b2 a4\fermata a4 |
        g4 g c a |
        bes8 a g f g4. f8 |
        f2\fermata r4 a4 |
        d,4 e f8 g a4 |
        d,2\fermata r4 e4 |
        f4 e f g |
        a4 b c8 b a4 |
        d4 c bes8 a g f |
        e4. d8 d2\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a4 b8 cis d f4 e8 |
        f8 g g a g f e4 |
        f4 e e e8 f8 ~ |
	f8 e16 d e8 f g e f4 |
        f4 e8 f8 ~ f8 e16 d e4 |
        c2 r4 d4 ~ |
	d8 a8 bes a ~ a8 d ~ d cis |
        d4 g8 f ~ f8 d b8 e16 d |
        c2 r4 f4 ~ |
	f8 e16 d e8 f g e f a |
        g8 f e d d cis16 b! cis4 |
        a2 r4 f'4 |
        e4 d4 ~ d8 cis16 b! cis4 |
        d2 r4 c!4 |
        c8 d16 e f8 e16 d g8 f16 g a4 ~ |
	a8 gis16 fis gis4 e f |
        f4 f8 e16 d e4 f |
        f16 e f8 e f8 ~ f8 e16 d e4 |
        c2 r4 c4 |
        b4 cis d cis! |
        d2 r4 cis4 |
        d4 cis d8 c bes c |
        c8 d16 e f8 e16 d e8 f16 g a8 g |
        fis8 g a fis d4 e8 d8 ~ |
	d8 cis16 b cis4 a2 |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key d \dorian % c \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        f8 g |
        a4 g a c |
        c8 d e4 d4. c8 |
        b4 ~ b8 d c4 c |
        d8 g, c4 c c |
        d8 a c4 d8 bes g c16 bes |
        a2 r4 f8 g |
        a4 g f8 bes8 ~ bes4 |
        a8 g8 g8 a8 ~ a8 gis16 fis gis4 |
        e2 r4 c'4 |
        d8 g, c4 c c8 f |
        d8 cis8 ~ cis8 d bes8 g8 ~ g8 a16 g |
        f2 r4 d'8 c |
        bes8 a a g16 a bes8 g e a16 g |
        f2 r4 f8 g |
        a8 b16 c d8 b g c16 b a8 c |
        f8 d b e16 d cis4 d4 ~ |
	d8 c16 b c4 c4 ~ c8 d16 c |
        bes8 c c16 bes a8 g16 a bes!4 c16 bes |
        a2 r4 f4 |
        g4. f16 g a4. g8 |
        f2 r4 a4 |
        a4 a4 a d8 c16 bes |
        a8 b!16 c d8 b g d' c4 ~ |
	c8 bes a d8 ~ d8 c8 bes! b |
        \once \override NoteColumn #'force-hshift = #0.4 e,4 ~ e16 f g8 fis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d8 e |
        f8 g f e d4 c |
        f4 e8 fis g gis a c, |
        d8 b e4 a,4\fermata a |
        b4 c8 d e c f es |
        d8 c bes a bes! g c4 |
        f,2\fermata r4 d'8 e |
        f4 cis d e |
        f8 g16 f e8 f16 e d8 b e4 |
        a,2\fermata r4 a4 |
        b4 c8 d e c f d |
        g8 a bes a g e \once \override NoteColumn #'force-hshift = #1.6 a8 a, |
        d2\fermata r4 d4 ~ |
	d8 cis8 d bes g e a4 |
        bes2\fermata r4 f'4 |
        f8 e d g e a16 g f8 e |
        d8 b e4 a,\fermata d8 c! |
        b8 g c bes a g f4 |
        g8 a16 bes c8 d bes g c c, |
        f2\fermata r4 f'4 ~ |
	f4 e4 d a |
        bes2\fermata r4 a4 |
        d8 f a g f4. e8 |
        f8 e d g c, d16 e f8 e |
        d8 e fis d g4. gis8 |
        a4 a, d2\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "241." }
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

