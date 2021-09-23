.class Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData$1;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;)V
    .locals 0

    .line 402
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData$1;->this$1:Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 406
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData$1;->this$1:Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity;->finish()V

    return-void
.end method
