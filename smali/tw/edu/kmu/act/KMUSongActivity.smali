.class public Ltw/edu/kmu/act/KMUSongActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "KMUSongActivity.java"


# instance fields
.field private playNewSongListener:Ltw/edu/kmu/listener/PlaySongListener;

.field private playOldSongListener:Ltw/edu/kmu/listener/PlaySongListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a001b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 22
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "\u6821\u6b4c"

    .line 23
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/KMUSongActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f08000b

    .line 25
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/KMUSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f08000a

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "school_songs.jpg"

    const-string v1, "(\\.jpg)|(\\.png)|(\\.gif)"

    const-string v2, ""

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u5716\u6a94\u540d\u7a31"

    .line 31
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v3

    invoke-virtual {p0}, Ltw/edu/kmu/act/KMUSongActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Ltw/edu/kmu/act/KMUSongActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ltw/edu/kmu/act/KMUSongActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, ""

    .line 41
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/KMUSongActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    iget-object v3, p0, Ltw/edu/kmu/act/KMUSongActivity;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 43
    :cond_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "anthem1.mp3,anthem2.mp3"

    const-string v0, ","

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {}, Ltw/edu/kmu/resource/RawResource;->getInstance()Ltw/edu/kmu/resource/RawResource;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const-string v2, "\\.mp3"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ltw/edu/kmu/act/KMUSongActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Ltw/edu/kmu/act/KMUSongActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ltw/edu/kmu/resource/RawResource;->getMusic(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f08004a

    .line 54
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/KMUSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    new-instance v3, Ltw/edu/kmu/listener/PlaySongListener;

    const v4, 0x7f0c0108

    invoke-direct {v3, v1, v0, v4}, Ltw/edu/kmu/listener/PlaySongListener;-><init>(Landroid/widget/Button;II)V

    iput-object v3, p0, Ltw/edu/kmu/act/KMUSongActivity;->playOldSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    .line 57
    iget-object v0, p0, Ltw/edu/kmu/act/KMUSongActivity;->playOldSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-static {}, Ltw/edu/kmu/resource/RawResource;->getInstance()Ltw/edu/kmu/resource/RawResource;

    move-result-object v0

    aget-object p1, p1, v2

    const-string v1, "\\.mp3"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ltw/edu/kmu/act/KMUSongActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Ltw/edu/kmu/act/KMUSongActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Ltw/edu/kmu/resource/RawResource;->getMusic(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    const v0, 0x7f080049

    .line 59
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/KMUSongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    new-instance v1, Ltw/edu/kmu/listener/PlaySongListener;

    const v2, 0x7f0c0107

    invoke-direct {v1, v0, p1, v2}, Ltw/edu/kmu/listener/PlaySongListener;-><init>(Landroid/widget/Button;II)V

    iput-object v1, p0, Ltw/edu/kmu/act/KMUSongActivity;->playNewSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    .line 62
    iget-object p1, p0, Ltw/edu/kmu/act/KMUSongActivity;->playNewSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 68
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 69
    iget-object v0, p0, Ltw/edu/kmu/act/KMUSongActivity;->playOldSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ltw/edu/kmu/act/KMUSongActivity;->playOldSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    invoke-virtual {v0}, Ltw/edu/kmu/listener/PlaySongListener;->turnOff()V

    .line 72
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/KMUSongActivity;->playNewSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Ltw/edu/kmu/act/KMUSongActivity;->playNewSongListener:Ltw/edu/kmu/listener/PlaySongListener;

    invoke-virtual {v0}, Ltw/edu/kmu/listener/PlaySongListener;->turnOff()V

    :cond_1
    return-void
.end method
