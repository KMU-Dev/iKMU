.class public Ltw/edu/kmu/listener/PlaySongListener;
.super Ljava/lang/Object;
.source "PlaySongListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private button:Landroid/widget/Button;

.field private buttonPauseImage:I

.field private buttonPlayImage:I

.field private buttonTextId:I

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/widget/Button;II)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    .line 18
    iput v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPauseImage:I

    .line 23
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    .line 24
    iput p3, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    .line 25
    iput-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;Landroid/net/Uri;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    .line 18
    iput v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPauseImage:I

    .line 29
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    .line 30
    iput v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    .line 31
    iput-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public getButtonPauseImage()I
    .locals 1

    .line 103
    iget v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPauseImage:I

    return v0
.end method

.method public getButtonPlayImage()I
    .locals 1

    .line 95
    iget v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 88
    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 38
    :try_start_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u6309\u9215\u88ab\u6309\u4e0b"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 41
    iget p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    if-eq p1, v0, :cond_0

    .line 42
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    iget v1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 44
    :cond_0
    iget p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    if-eq p1, v0, :cond_1

    .line 45
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    iget v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 47
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u6309\u9215\u88ab\u6309\u4e0b.play"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 51
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 53
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 54
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 55
    iget p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    if-eq p1, v0, :cond_3

    .line 56
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    const v1, 0x7f0c0127

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 58
    :cond_3
    iget p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPauseImage:I

    if-eq p1, v0, :cond_4

    .line 59
    iget-object p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    iget v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPauseImage:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 61
    :cond_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u6309\u9215\u88ab\u6309\u4e0b.stop"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setButtonPauseImage(I)V
    .locals 0

    .line 107
    iput p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPauseImage:I

    return-void
.end method

.method public setButtonPlayImage(I)V
    .locals 0

    .line 99
    iput p1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    return-void
.end method

.method public turnOff()V
    .locals 3

    .line 73
    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u6309\u9215\u88ab\u6309\u4e0b.play"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :cond_0
    iget v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    iget v2, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonTextId:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 82
    :cond_1
    iget v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    if-eq v0, v1, :cond_2

    .line 83
    iget-object v0, p0, Ltw/edu/kmu/listener/PlaySongListener;->button:Landroid/widget/Button;

    iget v1, p0, Ltw/edu/kmu/listener/PlaySongListener;->buttonPlayImage:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method
