.class public Lde/gdata/mobilesecurity/contacts/ContactTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "contacts"

.field private static projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "contacts"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lde/gdata/mobilesecurity/contacts/ContactTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactTable;->projection:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lde/gdata/mobilesecurity/database/Table;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/contacts/ContactTable;->projection:[Ljava/lang/String;

    .line 19
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/contacts/ContactTable;->projection:[Ljava/lang/String;

    return-object v0
.end method
