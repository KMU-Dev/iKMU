.class public Ltw/edu/kmu/act/CustomCameraView;
.super Landroid/view/SurfaceView;
.source "CustomCameraView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomCameraView"


# instance fields
.field camera:Landroid/hardware/Camera;

.field private isClose:Z

.field previewHolder:Landroid/view/SurfaceHolder;

.field surfaceHolderListener:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Ltw/edu/kmu/act/CustomCameraView;->isClose:Z

    .line 20
    new-instance v0, Ltw/edu/kmu/act/CustomCameraView$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/CustomCameraView$1;-><init>(Ltw/edu/kmu/act/CustomCameraView;)V

    iput-object v0, p0, Ltw/edu/kmu/act/CustomCameraView;->surfaceHolderListener:Landroid/view/SurfaceHolder$Callback;

    .line 56
    invoke-virtual {p0}, Ltw/edu/kmu/act/CustomCameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/CustomCameraView;->previewHolder:Landroid/view/SurfaceHolder;

    .line 57
    iget-object v0, p0, Ltw/edu/kmu/act/CustomCameraView;->previewHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 58
    iget-object v0, p0, Ltw/edu/kmu/act/CustomCameraView;->previewHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Ltw/edu/kmu/act/CustomCameraView;->surfaceHolderListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 59
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/CustomCameraView;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Ltw/edu/kmu/act/CustomCameraView;->isClose:Z

    .line 20
    new-instance p1, Ltw/edu/kmu/act/CustomCameraView$1;

    invoke-direct {p1, p0}, Ltw/edu/kmu/act/CustomCameraView$1;-><init>(Ltw/edu/kmu/act/CustomCameraView;)V

    iput-object p1, p0, Ltw/edu/kmu/act/CustomCameraView;->surfaceHolderListener:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Ltw/edu/kmu/act/CustomCameraView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/CustomCameraView;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Ltw/edu/kmu/act/CustomCameraView;->isClose:Z

    return p0
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Ltw/edu/kmu/act/CustomCameraView;->isClose:Z

    .line 77
    iget-object v0, p0, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
