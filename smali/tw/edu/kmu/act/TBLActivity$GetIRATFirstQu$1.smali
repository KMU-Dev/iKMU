.class Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu$1;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1408
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;->access$1400(Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1409
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ltw/edu/kmu/act/TBLActivity;->access$602(Ltw/edu/kmu/act/TBLActivity;Z)Z

    .line 1410
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLActivity;->finish()V

    :cond_0
    return-void
.end method
