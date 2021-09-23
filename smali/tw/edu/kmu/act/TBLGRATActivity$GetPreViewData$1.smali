.class Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData$1;
.super Ljava/lang/Object;
.source "TBLGRATActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData$1;->this$1:Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1778
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData$1;->this$1:Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;->access$2000(Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1779
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData$1;->this$1:Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ltw/edu/kmu/act/TBLGRATActivity;->access$302(Ltw/edu/kmu/act/TBLGRATActivity;Z)Z

    .line 1780
    iget-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData$1;->this$1:Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;->this$0:Ltw/edu/kmu/act/TBLGRATActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLGRATActivity;->finish()V

    :cond_0
    return-void
.end method
