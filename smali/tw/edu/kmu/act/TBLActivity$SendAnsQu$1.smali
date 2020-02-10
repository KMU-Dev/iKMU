.class Ltw/edu/kmu/act/TBLActivity$SendAnsQu$1;
.super Ljava/lang/Object;
.source "TBLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TBLActivity$SendAnsQu;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLActivity$SendAnsQu;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity$SendAnsQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1333
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$SendAnsQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->access$1200(Ltw/edu/kmu/act/TBLActivity$SendAnsQu;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1334
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$SendAnsQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ltw/edu/kmu/act/TBLActivity;->access$602(Ltw/edu/kmu/act/TBLActivity;Z)Z

    .line 1335
    iget-object p1, p0, Ltw/edu/kmu/act/TBLActivity$SendAnsQu$1;->this$1:Ltw/edu/kmu/act/TBLActivity$SendAnsQu;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLActivity$SendAnsQu;->this$0:Ltw/edu/kmu/act/TBLActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLActivity;->finish()V

    :cond_0
    return-void
.end method
