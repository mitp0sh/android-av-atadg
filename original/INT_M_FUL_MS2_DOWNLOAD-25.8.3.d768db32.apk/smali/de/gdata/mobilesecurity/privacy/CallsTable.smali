.class public Lde/gdata/mobilesecurity/privacy/CallsTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "calllog"

.field private static a:[Lde/gdata/mobilesecurity/database/Column;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/CallsTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/CallsTable;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "calllog"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 2

    .prologue
    .line 21
    sget-object v1, Lde/gdata/mobilesecurity/privacy/CallsTable;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/CallsTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    if-nez v0, :cond_0

    .line 23
    const-class v0, Lde/gdata/mobilesecurity/privacy/CallsTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/CallsTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/CallsTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    .line 25
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/CallsTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
