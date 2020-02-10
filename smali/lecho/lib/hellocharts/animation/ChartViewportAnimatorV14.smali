.class public Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV14.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/ChartViewportAnimator;
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

.field private final chart:Llecho/lib/hellocharts/view/Chart;

.field private newViewport:Llecho/lib/hellocharts/model/Viewport;

.field private startViewport:Llecho/lib/hellocharts/model/Viewport;

.field private targetViewport:Llecho/lib/hellocharts/model/Viewport;


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/Chart;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 17
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 18
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 19
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 22
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    .line 24
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

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

    .line 47
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 68
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {p1, v0}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 69
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 78
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 52
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 53
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    .line 54
    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    .line 55
    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    .line 56
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget-object v4, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    .line 57
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    iget-object v4, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v4, v0

    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v4, v0, v1, v2}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 59
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {p1, v0}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    return-void
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {p1}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0

    .line 91
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    :goto_0
    return-void
.end method

.method public startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;)V
    .locals 2

    .line 31
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 32
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p1, p2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 33
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;J)V
    .locals 1

    .line 39
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 40
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p1, p2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 41
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
