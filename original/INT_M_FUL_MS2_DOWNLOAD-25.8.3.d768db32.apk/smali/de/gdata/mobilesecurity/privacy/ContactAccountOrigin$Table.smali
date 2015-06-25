.class public Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "contact_account_origin"

.field private static a:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "contact_account_origin"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    invoke-super {p0}, Lde/gdata/mobilesecurity/database/Table;->getProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;->a:[Ljava/lang/String;

    .line 31
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;->a:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
