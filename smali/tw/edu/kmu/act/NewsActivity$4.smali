.class Ltw/edu/kmu/act/NewsActivity$4;
.super Ljava/lang/Object;
.source "NewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/NewsActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/NewsActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 217
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$702(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 218
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const-string v0, "4"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$802(Ltw/edu/kmu/act/NewsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$402(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 220
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ltw/edu/kmu/act/NewsActivity;->access$302(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 221
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 222
    new-instance p1, Ltw/edu/kmu/act/NewsActivity$getServerData;

    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Ltw/edu/kmu/act/NewsActivity$getServerData;-><init>(Ltw/edu/kmu/act/NewsActivity;Ltw/edu/kmu/act/NewsActivity$1;)V

    .line 223
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Ltw/edu/kmu/act/NewsActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1100(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f07013a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 225
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$900(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f070139

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$4;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1200(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
