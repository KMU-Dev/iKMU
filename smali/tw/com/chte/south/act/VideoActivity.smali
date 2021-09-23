.class public Ltw/com/chte/south/act/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private handler:Landroid/os/Handler;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xa

    .line 25
    iput v0, p0, Ltw/com/chte/south/act/VideoActivity;->CLOSE_PROGRESSBAR:I

    .line 109
    new-instance v0, Ltw/com/chte/south/act/VideoActivity$1;

    invoke-direct {v0, p0}, Ltw/com/chte/south/act/VideoActivity$1;-><init>(Ltw/com/chte/south/act/VideoActivity;)V

    iput-object v0, p0, Ltw/com/chte/south/act/VideoActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Ltw/com/chte/south/act/VideoActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Ltw/com/chte/south/act/VideoActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Ltw/com/chte/south/act/VideoActivity;)Landroid/os/Handler;
    .locals 0

    .line 109
    iget-object p0, p0, Ltw/com/chte/south/act/VideoActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Ltw/com/chte/south/act/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/com/chte/south/act/VideoActivity;->url:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Ltw/com/chte/south/act/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "true"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/VideoActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Ltw/com/chte/south/act/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/VideoActivity;->setRequestedOrientation(I)V

    const p1, 0x7f030003

    .line 41
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/VideoActivity;->setContentView(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f030002

    .line 35
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/VideoActivity;->setContentView(I)V

    :goto_1
    const p1, 0x7f070009

    .line 51
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 53
    new-instance v0, Ltw/com/chte/south/act/VideoActivity$2;

    invoke-direct {v0, p0}, Ltw/com/chte/south/act/VideoActivity$2;-><init>(Ltw/com/chte/south/act/VideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p1, 0x7f07000a

    .line 68
    invoke-virtual {p0, p1}, Ltw/com/chte/south/act/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 70
    new-instance v0, Ltw/com/chte/south/act/VideoActivity$3;

    invoke-direct {v0, p0}, Ltw/com/chte/south/act/VideoActivity$3;-><init>(Ltw/com/chte/south/act/VideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v0, 0x7f070008

    .line 84
    invoke-virtual {p0, v0}, Ltw/com/chte/south/act/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    const v1, 0x7f07000b

    .line 85
    invoke-virtual {p0, v1}, Ltw/com/chte/south/act/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    new-instance v1, Ltw/com/chte/south/act/VideoActivity$4;

    invoke-direct {v1, p0, v0}, Ltw/com/chte/south/act/VideoActivity$4;-><init>(Ltw/com/chte/south/act/VideoActivity;Landroid/widget/VideoView;)V

    .line 98
    invoke-virtual {v1}, Ltw/com/chte/south/act/VideoActivity$4;->start()V

    .line 101
    iget-object v1, p0, Ltw/com/chte/south/act/VideoActivity;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 102
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
