.class public Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "hidden_numbers"

.field private static a:[Lde/gdata/mobilesecurity/database/Column;

.field private static b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "hidden_numbers"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    if-nez v0, :cond_0

    .line 23
    const-class v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    .line 25
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    invoke-super {p0}, Lde/gdata/mobilesecurity/database/Table;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->b:[Ljava/lang/String;

    .line 33
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->b:[Ljava/lang/String;

    return-object v0
.end method
