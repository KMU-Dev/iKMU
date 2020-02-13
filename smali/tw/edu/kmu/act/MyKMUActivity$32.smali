.class Ltw/edu/kmu/act/MyKMUActivity$32;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# TODO: Annotations: beaconClassDialog positiveButton OnClickListener

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->showBeaconClassDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;

.field final synthetic val$chineseco:Ljava/lang/String;

.field final synthetic val$classId:Ljava/lang/String;

.field final synthetic val$seqNo:Ljava/lang/String;

.field final synthetic val$teacherNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$classId:Ljava/lang/String;

    iput-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$teacherNo:Ljava/lang/String;

    iput-object p4, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$chineseco:Ljava/lang/String;

    iput-object p5, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$seqNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1354
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-string v1, ""

    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$classId:Ljava/lang/String;

    iget-object v3, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$teacherNo:Ljava/lang/String;

    iget-object v4, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$chineseco:Ljava/lang/String;

    iget-object v5, p0, Ltw/edu/kmu/act/MyKMUActivity$32;->val$seqNo:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Ltw/edu/kmu/act/MyKMUActivity;->startIRSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
