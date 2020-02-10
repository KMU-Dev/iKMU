.class Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData$1;
.super Ljava/lang/Object;
.source "TBLReadOnlyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;)V
    .locals 0

    .line 388
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData$1;->this$1:Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 392
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData$1;->this$1:Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->access$500(Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "90"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData$1;->this$1:Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;

    iget-object p1, p1, Ltw/edu/kmu/act/TBLReadOnlyActivity$GetReadOnlyData;->this$0:Ltw/edu/kmu/act/TBLReadOnlyActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/TBLReadOnlyActivity;->finish()V

    :cond_0
    return-void
.end method
