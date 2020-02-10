.class public Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;
.super Ljava/lang/Object;
.source "PieChartRotationAnimatorV14.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/PieChartRotationAnimator;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field private animator:Landroid/animation/ValueAnimator;

.field private final chart:Llecho/lib/hellocharts/view/PieChartView;

.field private startRotation:F

.field private targetRotation:F


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/PieChartView;)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 20
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;-><init>(Llecho/lib/hellocharts/view/PieChartView;J)V

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/view/PieChartView;J)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    .line 16
    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    .line 17
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 24
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->chart:Llecho/lib/hellocharts/view/PieChartView;

    const/4 p1, 0x2

    .line 25
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    .line 26
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 72
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 57
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->chart:Llecho/lib/hellocharts/view/PieChartView;

    iget v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 58
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 67
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 45
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 46
    iget v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    iget v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    iget v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    .line 48
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->chart:Llecho/lib/hellocharts/view/PieChartView;

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    return-void
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {p1}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0

    .line 80
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    :goto_0
    return-void
.end method

.method public startAnimation(FF)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 33
    iput p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    rem-float/2addr p2, v0

    add-float/2addr p2, v0

    rem-float/2addr p2, v0

    .line 34
    iput p2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    .line 35
    iget-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
