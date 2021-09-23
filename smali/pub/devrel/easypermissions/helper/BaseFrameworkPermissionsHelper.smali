.class public abstract Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper;
.super Lpub/devrel/easypermissions/helper/PermissionHelper;
.source "BaseFrameworkPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpub/devrel/easypermissions/helper/PermissionHelper<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public varargs showRequestPermissionRationale(Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-static {p2, p3, p1, p4, p5}, Lpub/devrel/easypermissions/RationaleDialogFragment;->newInstance(IILjava/lang/String;I[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "RationaleDialogFragment"

    invoke-virtual {p1, p2, p3}, Lpub/devrel/easypermissions/RationaleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
