.class Ltw/edu/kmu/act/NewsActivity$2;
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

    .line 171
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 175
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$702(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 176
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const-string v1, "1"

    invoke-static {p1, v1}, Ltw/edu/kmu/act/NewsActivity;->access$802(Ltw/edu/kmu/act/NewsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ltw/edu/kmu/act/NewsActivity;->access$402(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 178
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/NewsActivity;->access$302(Ltw/edu/kmu/act/NewsActivity;I)I

    .line 179
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 180
    new-instance p1, Ltw/edu/kmu/act/NewsActivity$getServerData;

    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Ltw/edu/kmu/act/NewsActivity$getServerData;-><init>(Ltw/edu/kmu/act/NewsActivity;Ltw/edu/kmu/act/NewsActivity$1;)V

    .line 181
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/NewsActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$900(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f07013a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 183
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f070139

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 184
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1100(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 185
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity$2;->this$0:Ltw/edu/kmu/act/NewsActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/NewsActivity;->access$1200(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
