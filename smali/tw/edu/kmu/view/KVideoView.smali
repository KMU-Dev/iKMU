.class public Ltw/edu/kmu/view/KVideoView;
.super Landroid/widget/VideoView;
.source "KVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {v0, p1}, Ltw/edu/kmu/view/KVideoView;->getDefaultSize(II)I

    move-result p1

    .line 25
    invoke-static {v0, p2}, Ltw/edu/kmu/view/KVideoView;->getDefaultSize(II)I

    move-result p2

    .line 26
    invoke-virtual {p0, p1, p2}, Ltw/edu/kmu/view/KVideoView;->setMeasuredDimension(II)V

    return-void
.end method
