.class public Ltw/edu/kmu/view/TreeElement;
.super Ljava/lang/Object;
.source "TreeElement.java"


# static fields
.field public static final NO_PARENT:I = -0x1

.field public static final TOP_LEVEL:I


# instance fields
.field private classId:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private classRoom:Ljava/lang/String;

.field private contentText:Ljava/lang/String;

.field private hasChildren:Z

.field private id:I

.field private isExpanded:Z

.field private level:I

.field private parendId:I

.field private seqno:Ljava/lang/String;

.field private teacherNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->classRoom:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Ltw/edu/kmu/view/TreeElement;->contentText:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Ltw/edu/kmu/view/TreeElement;->classId:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Ltw/edu/kmu/view/TreeElement;->teacherNo:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Ltw/edu/kmu/view/TreeElement;->className:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Ltw/edu/kmu/view/TreeElement;->seqno:Ljava/lang/String;

    .line 46
    iput p7, p0, Ltw/edu/kmu/view/TreeElement;->level:I

    .line 47
    iput p8, p0, Ltw/edu/kmu/view/TreeElement;->id:I

    .line 48
    iput p9, p0, Ltw/edu/kmu/view/TreeElement;->parendId:I

    .line 49
    iput-boolean p10, p0, Ltw/edu/kmu/view/TreeElement;->hasChildren:Z

    .line 50
    iput-boolean p11, p0, Ltw/edu/kmu/view/TreeElement;->isExpanded:Z

    return-void
.end method


# virtual methods
.method public getClassId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Ltw/edu/kmu/view/TreeElement;->classId:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Ltw/edu/kmu/view/TreeElement;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClassRoom()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Ltw/edu/kmu/view/TreeElement;->classRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Ltw/edu/kmu/view/TreeElement;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 119
    iget v0, p0, Ltw/edu/kmu/view/TreeElement;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 111
    iget v0, p0, Ltw/edu/kmu/view/TreeElement;->level:I

    return v0
.end method

.method public getParendId()I
    .locals 1

    .line 127
    iget v0, p0, Ltw/edu/kmu/view/TreeElement;->parendId:I

    return v0
.end method

.method public getSeqno()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Ltw/edu/kmu/view/TreeElement;->seqno:Ljava/lang/String;

    return-object v0
.end method

.method public getTeacherNo()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Ltw/edu/kmu/view/TreeElement;->teacherNo:Ljava/lang/String;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Ltw/edu/kmu/view/TreeElement;->isExpanded:Z

    return v0
.end method

.method public isHasChildren()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Ltw/edu/kmu/view/TreeElement;->hasChildren:Z

    return v0
.end method

.method public setClassId(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->classId:Ljava/lang/String;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->className:Ljava/lang/String;

    return-void
.end method

.method public setClassRoom(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->classRoom:Ljava/lang/String;

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->contentText:Ljava/lang/String;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Ltw/edu/kmu/view/TreeElement;->isExpanded:Z

    return-void
.end method

.method public setHasChildren(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Ltw/edu/kmu/view/TreeElement;->hasChildren:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 123
    iput p1, p0, Ltw/edu/kmu/view/TreeElement;->id:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 115
    iput p1, p0, Ltw/edu/kmu/view/TreeElement;->level:I

    return-void
.end method

.method public setParendId(I)V
    .locals 0

    .line 131
    iput p1, p0, Ltw/edu/kmu/view/TreeElement;->parendId:I

    return-void
.end method

.method public setSeqno(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->seqno:Ljava/lang/String;

    return-void
.end method

.method public setTeacherNo(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltw/edu/kmu/view/TreeElement;->teacherNo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeElement{classId='"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/view/TreeElement;->classId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "', className='"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/view/TreeElement;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "', classRoom='"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/view/TreeElement;->classRoom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "', contentText='"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/view/TreeElement;->contentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #const-string v1, "', hasChildren="

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #iget-boolean v1, p0, Ltw/edu/kmu/view/TreeElement;->hasChildren:Z

    #invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #move-result v1

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #const-string v1, "', id="

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #iget v1, p0, Ltw/edu/kmu/view/TreeElement;->id:I

    #invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #move-result v1

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #const-string v1, "', isExpanded="

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #iget-boolean v1, p0, Ltw/edu/kmu/view/TreeElement;->isExpanded:Z

    #invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #move-result v1

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #const-string v1, "', level="

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #iget v1, p0, Ltw/edu/kmu/view/TreeElement;->level:I

    #invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #move-result v1

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #const-string v1, "', parendId="

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #iget v1, p0, Ltw/edu/kmu/view/TreeElement;->parendId:I

    #invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #move-result v1

    #invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "', seqno='"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/view/TreeElement;->seqno:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "', teacherNo='"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/view/TreeElement;->teacherNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
