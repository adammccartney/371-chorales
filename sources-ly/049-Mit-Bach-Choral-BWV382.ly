
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 382" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Mit Fried und Freud ich fahr dahin" }
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
        \tempo 4 = 34 r2 \tempo 4 = 78 r2 |
        R1 |
        \tempo 4 = 30 r4 \tempo 4 = 78 r2. |
        R1 |
        \tempo 4 = 30 r1 |
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
	\relative c' {
        d4 |
        a'4 a g d' |
        c4 b a\fermata c |
        b4 a b2 |
        a2.\fermata b4 |
        c4 b c a |
        g8 f e4 d\fermata a' ~ |
	a4 g4 f8 e d4 |
        c2\fermata a'4 f |
        c'4 a g8 f g4 |
        a4\fermata g f8 e d4 |
        c4 f4 e8 d4 cis!8 |
        d1 |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        d4 f e fis8 gis |
        a4. gis8 e4 a ~ |
	a8 gis8 a4 f e8 d |
        c2. g'!4 |
        g4 g g f |
        e8 d cis4 a e'8 d |
        e8 cis d e a,4 bes |
        a2 e'4 d |
        c8 g'4 f8 e d cis d |
        e4 e d8 c! b4 |
        a8 b cis d e8 f8 g4 ^~ |
	g4 fis8 e fis2\fermata |
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
        a4 d8 c b4 a8 b |
        c8 d16 e f8 e c4 e |
        f8 e16 d c b a8 ~ a d16 b gis4 |
        a2. d4 |
        e4 d c4. d8 |
        cis8 d a g f4 a |
        g8 f4 e8 f2 |
        f2 a4 a |
        g4 c8 d e f e d |
        cis4 a a8 g f4 |
        e4 a2. |
        bes4 a8 g a2\fermata |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        d8 e |
        f8 e f d e d c b |
        a8 c d e a,4\fermata a' |
        d,8 e f e d b e4 |
        a,2.\fermata g'!8 f |
        e8 f g f e c f d |
        bes'8 g a4 d,\fermata cis8 b |
        cis8 a b cis d c d e |
        f2\fermata cis4 d |
        e4 f g8 a bes4 |
        a4\fermata cis, d4 gis,4 |
        a4. b8 cis d a4 |
        d,1\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "49." }
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

