.class Ltw/edu/kmu/act/ZoomImageActivity$1;
.super Landroid/os/Handler;
.source "ZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ZoomImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ZoomImageActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ZoomImageActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 111
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v2, 0x3ed

    if-eq v0, v2, :cond_1

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    const-string v1, "\u7db2\u8def\u901f\u5ea6\u904e\u6162"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$100(Ltw/edu/kmu/act/ZoomImageActivity;)V

    .line 115
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$200(Ltw/edu/kmu/act/ZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ltw/edu/kmu/view/ProgressWheel;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ZoomImageActivity;->access$300(Ltw/edu/kmu/act/ZoomImageActivity;)[Z

    move-result-object v0

    iget-object v2, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/ZoomImageActivity;->access$400(Ltw/edu/kmu/act/ZoomImageActivity;)I

    move-result v2

    aput-boolean v1, v0, v2

    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/ZoomImageActivity$1;->this$0:Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080055

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7167\u7247\u50b3\u8f38\u4e2d\u65b7"

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7167\u7247\u50b3\u8f38\u4e2d\u65b7\uff0c\u8acb\u78ba\u8a8d\u7db2\u8def\u6b63\u5e38\u5f8c\u91cd\u65b0\u9ede\u9078\u5716\u7247"

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u78ba\u5b9a"

    new-instance v2, Ltw/edu/kmu/act/ZoomImageActivity$1$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ZoomImageActivity$1$1;-><init>(Ltw/edu/kmu/act/ZoomImageActivity$1;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 142
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
