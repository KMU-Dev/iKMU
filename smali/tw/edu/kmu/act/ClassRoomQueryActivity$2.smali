.class Ltw/edu/kmu/act/ClassRoomQueryActivity$2;
.super Landroid/os/Handler;
.source "ClassRoomQueryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ClassRoomQueryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ClassRoomQueryActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ClassRoomQueryActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 199
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u76ee\u524d\u9023\u7dda\u932f\u8aa4"

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9078\u64c7\u91cd\u65b0\u9023\u7dda\u6216\u53d6\u6d88\u9023\u7dda"

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u9023\u7dda"

    new-instance v2, Ltw/edu/kmu/act/ClassRoomQueryActivity$2$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity$2$2;-><init>(Ltw/edu/kmu/act/ClassRoomQueryActivity$2;)V

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Ltw/edu/kmu/act/ClassRoomQueryActivity$2$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity$2$1;-><init>(Ltw/edu/kmu/act/ClassRoomQueryActivity$2;)V

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->access$900(Ltw/edu/kmu/act/ClassRoomQueryActivity;)V

    .line 229
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
