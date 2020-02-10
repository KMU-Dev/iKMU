.class Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData$1;
.super Ljava/lang/Object;
.source "EvlQuestionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;)V
    .locals 0

    .line 890
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData$1;->this$1:Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 894
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData$1;->this$1:Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;

    iget-object p1, p1, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->finish()V

    return-void
.end method
