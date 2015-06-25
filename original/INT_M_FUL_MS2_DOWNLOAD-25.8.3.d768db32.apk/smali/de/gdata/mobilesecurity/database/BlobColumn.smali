.class public Lde/gdata/mobilesecurity/database/BlobColumn;
.super Lde/gdata/mobilesecurity/database/BaseColumn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/BaseColumn;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/database/BaseColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getFieldType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "blob"

    return-object v0
.end method
