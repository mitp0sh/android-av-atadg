.class public Lde/gdata/mobilesecurity/database/TextColumn;
.super Lde/gdata/mobilesecurity/database/BaseColumn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/BaseColumn;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/database/BaseColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getFieldType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "text"

    return-object v0
.end method
