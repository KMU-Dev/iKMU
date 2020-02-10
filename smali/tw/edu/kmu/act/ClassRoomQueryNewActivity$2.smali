.class Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;
.super Ljava/lang/Object;
.source "ClassRoomQueryNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getTypeBtnView(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

.field final synthetic val$qName:Ljava/lang/String;

.field final synthetic val$qType:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;I)V
    .locals 0

    .line 296
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;->val$qName:Ljava/lang/String;

    iput p3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;->val$qType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 299
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;->val$qName:Ljava/lang/String;

    iget v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;->val$qType:I

    invoke-static {p1, v0, v1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$600(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;I)V

    return-void
.end method
