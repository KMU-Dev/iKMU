.class Ltw/edu/kmu/act/IRS4TAActivity$1;
.super Ljava/lang/Object;
.source "IRS4TAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRS4TAActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$1;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 178
    new-instance p1, Ltw/edu/kmu/act/IRS4TAActivity$GetSeqList;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$1;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity$GetSeqList;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    const/4 v0, 0x1

    .line 179
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity$GetSeqList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
