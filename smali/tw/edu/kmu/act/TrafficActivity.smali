.class public Ltw/edu/kmu/act/TrafficActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "TrafficActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 114
    iget-boolean v0, p0, Ltw/edu/kmu/act/TrafficActivity;->isPad:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00de

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00df

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    sget-object v0, Ltw/edu/kmu/act/TrafficActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TrafficActivity;->display:Landroid/view/Display;

    .line 22
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080070

    .line 24
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 25
    new-instance v0, Ltw/edu/kmu/act/TrafficActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficActivity$1;-><init>(Ltw/edu/kmu/act/TrafficActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080074

    .line 35
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 36
    new-instance v0, Ltw/edu/kmu/act/TrafficActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficActivity$2;-><init>(Ltw/edu/kmu/act/TrafficActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080075

    .line 47
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 48
    new-instance v0, Ltw/edu/kmu/act/TrafficActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficActivity$3;-><init>(Ltw/edu/kmu/act/TrafficActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080076

    .line 59
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 60
    new-instance v0, Ltw/edu/kmu/act/TrafficActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TrafficActivity$4;-><init>(Ltw/edu/kmu/act/TrafficActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->setLy4HVGA()V

    .line 78
    sget-object p1, Ltw/edu/kmu/act/TrafficActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLy4HVGA()V
    .locals 6

    .line 86
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/16 v1, 0x140

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    .line 88
    sget-object v0, Ltw/edu/kmu/act/TrafficActivity;->TAG:Ljava/lang/String;

    const-string v1, "width is 320 and height is 480"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btnIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/TrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 93
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x55

    div-int/lit8 v4, v4, 0x64

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 95
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x55

    div-int/lit8 v4, v4, 0x64

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gt v0, v2, :cond_1

    .line 103
    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/TrafficActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/high16 v4, 0x42aa0000    # 85.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
