.class public Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;
.super Ljava/lang/Object;
.source "ChartDataAnimatorV8.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/ChartDataAnimator;


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field final chart:Llecho/lib/hellocharts/view/Chart;

.field duration:J

.field final handler:Landroid/os/Handler;

.field final interpolator:Landroid/view/animation/Interpolator;

.field isAnimationStarted:Z

.field private final runnable:Ljava/lang/Runnable;

.field start:J


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/Chart;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->isAnimationStarted:Z

    .line 18
    new-instance v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;-><init>(Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;)V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->runnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 38
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;)Ljava/lang/Runnable;
    .locals 0

    .line 10
    iget-object p0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->isAnimationStarted:Z

    .line 59
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->animationDataFinished()V

    .line 61
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->isAnimationStarted:Z

    return v0
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {p1}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0

    .line 74
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    :goto_0
    return-void
.end method

.method public startAnimation(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 45
    iput-wide p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1f4

    .line 47
    iput-wide p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->duration:J

    :goto_0
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->isAnimationStarted:Z

    .line 51
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {p1}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->start:J

    .line 53
    iget-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    iget-object p2, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
