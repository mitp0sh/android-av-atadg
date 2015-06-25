.class public Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable$Columns;->this$0:Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
