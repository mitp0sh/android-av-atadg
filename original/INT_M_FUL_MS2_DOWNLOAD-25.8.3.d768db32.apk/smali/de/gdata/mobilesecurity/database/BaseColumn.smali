.class public abstract Lde/gdata/mobilesecurity/database/BaseColumn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/database/Column;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/BaseColumn;->a:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/database/BaseColumn;->b:Ljava/lang/String;

    .line 11
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lde/gdata/mobilesecurity/database/BaseColumn;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lde/gdata/mobilesecurity/database/BaseColumn;->b:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/BaseColumn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFieldType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/database/BaseColumn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    const-string v0, " %s %s %s "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/BaseColumn;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/BaseColumn;->getFieldType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/database/BaseColumn;->getConstraints()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
