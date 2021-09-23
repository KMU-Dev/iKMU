.class Ltw/edu/kmu/act/CustomCameraView$1;
.super Ljava/lang/Object;
.source "CustomCameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/CustomCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/CustomCameraView;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/CustomCameraView;)V
    .locals 0

    .line 20
    iput-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 38
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object p1, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 22
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    .line 25
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object p1, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    iget-object v0, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object v0, v0, Ltw/edu/kmu/act/CustomCameraView;->previewHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 26
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object p1, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 42
    invoke-static {}, Ltw/edu/kmu/act/CustomCameraView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    invoke-static {p1}, Ltw/edu/kmu/act/CustomCameraView;->access$100(Ltw/edu/kmu/act/CustomCameraView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object p1, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 46
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object p1, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 47
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iget-object p1, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 48
    iget-object p1, p0, Ltw/edu/kmu/act/CustomCameraView$1;->this$0:Ltw/edu/kmu/act/CustomCameraView;

    iput-object v0, p1, Ltw/edu/kmu/act/CustomCameraView;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method
