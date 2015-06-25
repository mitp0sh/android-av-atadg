.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config$Modes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLACKLIST:Ljava/lang/Integer;

.field public static final WHITELIST:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config$Modes;->BLACKLIST:Ljava/lang/Integer;

    .line 6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config$Modes;->WHITELIST:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
