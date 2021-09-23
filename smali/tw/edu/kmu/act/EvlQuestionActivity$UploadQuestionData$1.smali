.class Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$1;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$1;->this$1:Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1007
    new-instance p1, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;

    iget-object p2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$1;->this$1:Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;

    iget-object p2, p2, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V

    const/4 p2, 0x1

    .line 1008
    new-array p2, p2, [Ljava/lang/Integer;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
