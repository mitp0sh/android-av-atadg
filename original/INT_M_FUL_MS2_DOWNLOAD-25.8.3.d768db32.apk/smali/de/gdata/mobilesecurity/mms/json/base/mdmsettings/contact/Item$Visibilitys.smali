.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMMUNICATION_HIDDEN:Ljava/lang/Integer;

.field public static final HIDDEN:Ljava/lang/Integer;

.field public static final VISIBLE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->VISIBLE:Ljava/lang/Integer;

    .line 9
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->COMMUNICATION_HIDDEN:Ljava/lang/Integer;

    .line 10
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item$Visibilitys;->HIDDEN:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
